package app.dao;

import java.util.List;

import app.model.Comment;

public interface CommentDAO extends BaseDAO<Integer, Comment> {
	List<Comment> getAllComment();

	List<Object[]> getAllCommentByIdTour(Integer id);
}
